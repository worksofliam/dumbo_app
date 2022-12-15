**free

ctl-opt dftactgrp(*no);

dcl-pi P269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds T934 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T934 FROM T934 LIMIT 1;

theCharVar = 'Hello from P269';
dsply theCharVar;
P84();
P260();
P26();
return;