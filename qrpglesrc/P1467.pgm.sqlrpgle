**free

ctl-opt dftactgrp(*no);

dcl-pi P1467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'

dcl-ds T314 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T314 FROM T314 LIMIT 1;

theCharVar = 'Hello from P1467';
dsply theCharVar;
P696();
P1095();
P286();
return;