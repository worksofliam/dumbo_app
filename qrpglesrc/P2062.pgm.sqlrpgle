**free

ctl-opt dftactgrp(*no);

dcl-pi P2062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P821.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P1132.rpgleinc'

dcl-ds theTable extname('T881') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T881 LIMIT 1;

theCharVar = 'Hello from P2062';
dsply theCharVar;
P821();
P322();
P1132();
return;