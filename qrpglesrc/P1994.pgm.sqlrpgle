**free

ctl-opt dftactgrp(*no);

dcl-pi P1994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'

dcl-ds T1157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1157 FROM T1157 LIMIT 1;

theCharVar = 'Hello from P1994';
dsply theCharVar;
P980();
P689();
P910();
return;