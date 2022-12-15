**free

ctl-opt dftactgrp(*no);

dcl-pi P1063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'

dcl-ds T53 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T53 FROM T53 LIMIT 1;

theCharVar = 'Hello from P1063';
dsply theCharVar;
P783();
P122();
P1003();
return;