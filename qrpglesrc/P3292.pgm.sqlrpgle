**free

ctl-opt dftactgrp(*no);

dcl-pi P3292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2744.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'

dcl-ds T174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T174 FROM T174 LIMIT 1;

theCharVar = 'Hello from P3292';
dsply theCharVar;
P2744();
P1925();
P796();
return;