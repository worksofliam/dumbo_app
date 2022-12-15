**free

ctl-opt dftactgrp(*no);

dcl-pi P5584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P4290.rpgleinc'

dcl-ds T736 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T736 FROM T736 LIMIT 1;

theCharVar = 'Hello from P5584';
dsply theCharVar;
P272();
P585();
P4290();
return;