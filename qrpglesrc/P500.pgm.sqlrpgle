**free

ctl-opt dftactgrp(*no);

dcl-pi P500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds T199 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T199 FROM T199 LIMIT 1;

theCharVar = 'Hello from P500';
dsply theCharVar;
P246();
P363();
P48();
return;