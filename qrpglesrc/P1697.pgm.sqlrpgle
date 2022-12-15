**free

ctl-opt dftactgrp(*no);

dcl-pi P1697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1308.rpgleinc'
/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds T324 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T324 FROM T324 LIMIT 1;

theCharVar = 'Hello from P1697';
dsply theCharVar;
P1308();
P1182();
P716();
return;