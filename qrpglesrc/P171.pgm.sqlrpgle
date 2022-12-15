**free

ctl-opt dftactgrp(*no);

dcl-pi P171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds T1079 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1079 FROM T1079 LIMIT 1;

theCharVar = 'Hello from P171';
dsply theCharVar;
P79();
P94();
P62();
return;