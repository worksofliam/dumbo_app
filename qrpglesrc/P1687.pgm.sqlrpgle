**free

ctl-opt dftactgrp(*no);

dcl-pi P1687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P1687';
dsply theCharVar;
P778();
P263();
P254();
return;