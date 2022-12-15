**free

ctl-opt dftactgrp(*no);

dcl-pi P1263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds T89 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T89 FROM T89 LIMIT 1;

theCharVar = 'Hello from P1263';
dsply theCharVar;
P1074();
P716();
P340();
return;