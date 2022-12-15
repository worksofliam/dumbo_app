**free

ctl-opt dftactgrp(*no);

dcl-pi P4466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4142.rpgleinc'
/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P3018.rpgleinc'

dcl-ds T817 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T817 FROM T817 LIMIT 1;

theCharVar = 'Hello from P4466';
dsply theCharVar;
P4142();
P992();
P3018();
return;