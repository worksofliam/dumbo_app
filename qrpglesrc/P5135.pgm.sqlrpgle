**free

ctl-opt dftactgrp(*no);

dcl-pi P5135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4556.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P4094.rpgleinc'

dcl-ds T668 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T668 FROM T668 LIMIT 1;

theCharVar = 'Hello from P5135';
dsply theCharVar;
P4556();
P414();
P4094();
return;