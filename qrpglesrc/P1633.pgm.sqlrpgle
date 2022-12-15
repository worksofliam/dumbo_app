**free

ctl-opt dftactgrp(*no);

dcl-pi P1633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P751.rpgleinc'
/copy 'qrpgleref/P942.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'

dcl-ds theTable extname('T1040') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1040 LIMIT 1;

theCharVar = 'Hello from P1633';
dsply theCharVar;
P751();
P942();
P511();
return;