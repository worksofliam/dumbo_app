**free

ctl-opt dftactgrp(*no);

dcl-pi P3887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1014.rpgleinc'
/copy 'qrpgleref/P2864.rpgleinc'
/copy 'qrpgleref/P1197.rpgleinc'

dcl-ds T268 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T268 FROM T268 LIMIT 1;

theCharVar = 'Hello from P3887';
dsply theCharVar;
P1014();
P2864();
P1197();
return;