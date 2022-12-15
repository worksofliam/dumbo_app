**free

ctl-opt dftactgrp(*no);

dcl-pi P231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds T314 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T314 FROM T314 LIMIT 1;

theCharVar = 'Hello from P231';
dsply theCharVar;
P207();
P48();
P165();
return;