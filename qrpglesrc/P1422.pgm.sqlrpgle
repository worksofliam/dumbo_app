**free

ctl-opt dftactgrp(*no);

dcl-pi P1422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1071.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P1269.rpgleinc'

dcl-ds T136 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T136 FROM T136 LIMIT 1;

theCharVar = 'Hello from P1422';
dsply theCharVar;
P1071();
P922();
P1269();
return;