**free

ctl-opt dftactgrp(*no);

dcl-pi P3363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P2489.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds T638 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T638 FROM T638 LIMIT 1;

theCharVar = 'Hello from P3363';
dsply theCharVar;
P654();
P2489();
P223();
return;