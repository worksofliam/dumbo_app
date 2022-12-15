**free

ctl-opt dftactgrp(*no);

dcl-pi P1863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds T526 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T526 FROM T526 LIMIT 1;

theCharVar = 'Hello from P1863';
dsply theCharVar;
P46();
P887();
P226();
return;