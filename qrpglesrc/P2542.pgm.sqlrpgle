**free

ctl-opt dftactgrp(*no);

dcl-pi P2542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P2264.rpgleinc'
/copy 'qrpgleref/P1806.rpgleinc'

dcl-ds theTable extname('T686') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T686 LIMIT 1;

theCharVar = 'Hello from P2542';
dsply theCharVar;
P506();
P2264();
P1806();
return;