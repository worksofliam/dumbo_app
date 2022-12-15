**free

ctl-opt dftactgrp(*no);

dcl-pi P1226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P1074.rpgleinc'

dcl-ds T866 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T866 FROM T866 LIMIT 1;

theCharVar = 'Hello from P1226';
dsply theCharVar;
P206();
P145();
P1074();
return;