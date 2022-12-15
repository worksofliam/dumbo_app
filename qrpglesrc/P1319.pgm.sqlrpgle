**free

ctl-opt dftactgrp(*no);

dcl-pi P1319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds T305 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T305 FROM T305 LIMIT 1;

theCharVar = 'Hello from P1319';
dsply theCharVar;
P375();
P256();
P115();
return;