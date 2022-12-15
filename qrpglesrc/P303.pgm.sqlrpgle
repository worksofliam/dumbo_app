**free

ctl-opt dftactgrp(*no);

dcl-pi P303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P303';
dsply theCharVar;
P156();
P203();
P255();
return;