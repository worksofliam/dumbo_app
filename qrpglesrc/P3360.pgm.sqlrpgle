**free

ctl-opt dftactgrp(*no);

dcl-pi P3360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1757.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P2034.rpgleinc'

dcl-ds T936 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T936 FROM T936 LIMIT 1;

theCharVar = 'Hello from P3360';
dsply theCharVar;
P1757();
P236();
P2034();
return;