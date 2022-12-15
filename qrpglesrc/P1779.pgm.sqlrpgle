**free

ctl-opt dftactgrp(*no);

dcl-pi P1779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1511.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P1421.rpgleinc'

dcl-ds theTable extname('T1581') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1581 LIMIT 1;

theCharVar = 'Hello from P1779';
dsply theCharVar;
P1511();
P72();
P1421();
return;