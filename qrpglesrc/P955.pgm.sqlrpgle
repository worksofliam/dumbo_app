**free

ctl-opt dftactgrp(*no);

dcl-pi P955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'

dcl-ds theTable extname('T268') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T268 LIMIT 1;

theCharVar = 'Hello from P955';
dsply theCharVar;
P354();
P648();
P744();
return;