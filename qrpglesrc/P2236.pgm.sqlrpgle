**free

ctl-opt dftactgrp(*no);

dcl-pi P2236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2072.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'
/copy 'qrpgleref/P2034.rpgleinc'

dcl-ds T8 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T8 FROM T8 LIMIT 1;

theCharVar = 'Hello from P2236';
dsply theCharVar;
P2072();
P1208();
P2034();
return;