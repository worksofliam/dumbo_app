**free

ctl-opt dftactgrp(*no);

dcl-pi P561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds T33 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T33 FROM T33 LIMIT 1;

theCharVar = 'Hello from P561';
dsply theCharVar;
P245();
P423();
P387();
return;