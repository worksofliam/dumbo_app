**free

ctl-opt dftactgrp(*no);

dcl-pi P928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T823 LIMIT 1;

theCharVar = 'Hello from P928';
dsply theCharVar;
P678();
P504();
P68();
return;