**free

ctl-opt dftactgrp(*no);

dcl-pi P2125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2110.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds T235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T235 FROM T235 LIMIT 1;

theCharVar = 'Hello from P2125';
dsply theCharVar;
P2110();
P1051();
P437();
return;