**free

ctl-opt dftactgrp(*no);

dcl-pi P3751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1690.rpgleinc'
/copy 'qrpgleref/P3467.rpgleinc'
/copy 'qrpgleref/P3427.rpgleinc'

dcl-ds T1186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1186 FROM T1186 LIMIT 1;

theCharVar = 'Hello from P3751';
dsply theCharVar;
P1690();
P3467();
P3427();
return;