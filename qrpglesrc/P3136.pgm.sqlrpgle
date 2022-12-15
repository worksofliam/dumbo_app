**free

ctl-opt dftactgrp(*no);

dcl-pi P3136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2234.rpgleinc'
/copy 'qrpgleref/P2939.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds T1159 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1159 FROM T1159 LIMIT 1;

theCharVar = 'Hello from P3136';
dsply theCharVar;
P2234();
P2939();
P257();
return;