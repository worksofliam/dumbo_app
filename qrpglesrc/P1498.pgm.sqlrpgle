**free

ctl-opt dftactgrp(*no);

dcl-pi P1498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P942.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'

dcl-ds T1158 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1158 FROM T1158 LIMIT 1;

theCharVar = 'Hello from P1498';
dsply theCharVar;
P942();
P26();
P949();
return;