**free

ctl-opt dftactgrp(*no);

dcl-pi P933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds theTable extname('T471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T471 LIMIT 1;

theCharVar = 'Hello from P933';
dsply theCharVar;
P601();
P215();
P541();
return;