**free

ctl-opt dftactgrp(*no);

dcl-pi P5190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P942.rpgleinc'
/copy 'qrpgleref/P4926.rpgleinc'

dcl-ds T743 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T743 FROM T743 LIMIT 1;

theCharVar = 'Hello from P5190';
dsply theCharVar;
P991();
P942();
P4926();
return;