**free

ctl-opt dftactgrp(*no);

dcl-pi P1904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1083.rpgleinc'
/copy 'qrpgleref/P1768.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'

dcl-ds T998 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T998 FROM T998 LIMIT 1;

theCharVar = 'Hello from P1904';
dsply theCharVar;
P1083();
P1768();
P818();
return;