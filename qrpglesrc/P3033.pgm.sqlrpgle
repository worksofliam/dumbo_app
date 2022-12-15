**free

ctl-opt dftactgrp(*no);

dcl-pi P3033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P819.rpgleinc'
/copy 'qrpgleref/P866.rpgleinc'
/copy 'qrpgleref/P791.rpgleinc'

dcl-ds T1079 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1079 FROM T1079 LIMIT 1;

theCharVar = 'Hello from P3033';
dsply theCharVar;
P819();
P866();
P791();
return;