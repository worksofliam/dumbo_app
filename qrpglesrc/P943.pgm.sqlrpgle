**free

ctl-opt dftactgrp(*no);

dcl-pi P943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds T152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T152 FROM T152 LIMIT 1;

theCharVar = 'Hello from P943';
dsply theCharVar;
P639();
P385();
P541();
return;