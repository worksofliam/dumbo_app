**free

ctl-opt dftactgrp(*no);

dcl-pi P3334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P2716.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'

dcl-ds theTable extname('T474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T474 LIMIT 1;

theCharVar = 'Hello from P3334';
dsply theCharVar;
P212();
P2716();
P599();
return;