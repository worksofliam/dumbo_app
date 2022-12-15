**free

ctl-opt dftactgrp(*no);

dcl-pi P1507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1013.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'

dcl-ds T636 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T636 FROM T636 LIMIT 1;

theCharVar = 'Hello from P1507';
dsply theCharVar;
P1013();
P376();
P896();
return;