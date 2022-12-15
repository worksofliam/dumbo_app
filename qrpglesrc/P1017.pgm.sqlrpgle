**free

ctl-opt dftactgrp(*no);

dcl-pi P1017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'

dcl-ds T502 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T502 FROM T502 LIMIT 1;

theCharVar = 'Hello from P1017';
dsply theCharVar;
P642();
P120();
P966();
return;