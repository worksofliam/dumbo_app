**free

ctl-opt dftactgrp(*no);

dcl-pi P1116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P874.rpgleinc'

dcl-ds T302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T302 FROM T302 LIMIT 1;

theCharVar = 'Hello from P1116';
dsply theCharVar;
P281();
P992();
P874();
return;