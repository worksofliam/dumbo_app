**free

ctl-opt dftactgrp(*no);

dcl-pi P633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'

dcl-ds theTable extname('T652') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T652 LIMIT 1;

theCharVar = 'Hello from P633';
dsply theCharVar;
P30();
P77();
P403();
return;