**free

ctl-opt dftactgrp(*no);

dcl-pi P423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds T1148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1148 FROM T1148 LIMIT 1;

theCharVar = 'Hello from P423';
dsply theCharVar;
P10();
P257();
P140();
return;