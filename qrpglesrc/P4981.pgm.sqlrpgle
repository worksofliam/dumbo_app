**free

ctl-opt dftactgrp(*no);

dcl-pi P4981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P2383.rpgleinc'

dcl-ds theTable extname('T1213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1213 LIMIT 1;

theCharVar = 'Hello from P4981';
dsply theCharVar;
P1901();
P494();
P2383();
return;