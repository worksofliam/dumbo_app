**free

ctl-opt dftactgrp(*no);

dcl-pi P1835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P1672.rpgleinc'

dcl-ds T547 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T547 FROM T547 LIMIT 1;

theCharVar = 'Hello from P1835';
dsply theCharVar;
P101();
P720();
P1672();
return;