**free

ctl-opt dftactgrp(*no);

dcl-pi P5056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3302.rpgleinc'
/copy 'qrpgleref/P4732.rpgleinc'
/copy 'qrpgleref/P3850.rpgleinc'

dcl-ds T1632 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1632 FROM T1632 LIMIT 1;

theCharVar = 'Hello from P5056';
dsply theCharVar;
P3302();
P4732();
P3850();
return;