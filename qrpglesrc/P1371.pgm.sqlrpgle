**free

ctl-opt dftactgrp(*no);

dcl-pi P1371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P469.rpgleinc'

dcl-ds theTable extname('T1585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1585 LIMIT 1;

theCharVar = 'Hello from P1371';
dsply theCharVar;
P711();
P1096();
P469();
return;