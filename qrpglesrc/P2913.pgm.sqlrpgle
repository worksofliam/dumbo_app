**free

ctl-opt dftactgrp(*no);

dcl-pi P2913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P1536.rpgleinc'
/copy 'qrpgleref/P2141.rpgleinc'

dcl-ds T872 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T872 FROM T872 LIMIT 1;

theCharVar = 'Hello from P2913';
dsply theCharVar;
P693();
P1536();
P2141();
return;