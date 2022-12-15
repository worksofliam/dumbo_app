**free

ctl-opt dftactgrp(*no);

dcl-pi P2133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P468.rpgleinc'

dcl-ds theTable extname('T1683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1683 LIMIT 1;

theCharVar = 'Hello from P2133';
dsply theCharVar;
P582();
P188();
P468();
return;