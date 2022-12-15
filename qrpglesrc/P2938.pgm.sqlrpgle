**free

ctl-opt dftactgrp(*no);

dcl-pi P2938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1612.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds T418 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T418 FROM T418 LIMIT 1;

theCharVar = 'Hello from P2938';
dsply theCharVar;
P1612();
P732();
P246();
return;