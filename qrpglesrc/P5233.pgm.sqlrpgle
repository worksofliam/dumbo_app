**free

ctl-opt dftactgrp(*no);

dcl-pi P5233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4506.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P4851.rpgleinc'

dcl-ds theTable extname('T585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T585 LIMIT 1;

theCharVar = 'Hello from P5233';
dsply theCharVar;
P4506();
P323();
P4851();
return;