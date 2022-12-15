**free

ctl-opt dftactgrp(*no);

dcl-pi P4448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3570.rpgleinc'
/copy 'qrpgleref/P4075.rpgleinc'
/copy 'qrpgleref/P3241.rpgleinc'

dcl-ds T1179 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1179 FROM T1179 LIMIT 1;

theCharVar = 'Hello from P4448';
dsply theCharVar;
P3570();
P4075();
P3241();
return;