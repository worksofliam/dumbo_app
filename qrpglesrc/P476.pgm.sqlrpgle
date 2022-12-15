**free

ctl-opt dftactgrp(*no);

dcl-pi P476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T131 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T131 FROM T131 LIMIT 1;

theCharVar = 'Hello from P476';
dsply theCharVar;
P154();
P33();
P28();
return;