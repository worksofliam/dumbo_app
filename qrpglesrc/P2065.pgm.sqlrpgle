**free

ctl-opt dftactgrp(*no);

dcl-pi P2065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1859.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'
/copy 'qrpgleref/P1128.rpgleinc'

dcl-ds T211 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T211 FROM T211 LIMIT 1;

theCharVar = 'Hello from P2065';
dsply theCharVar;
P1859();
P1441();
P1128();
return;