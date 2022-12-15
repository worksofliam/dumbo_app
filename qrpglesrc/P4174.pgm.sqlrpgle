**free

ctl-opt dftactgrp(*no);

dcl-pi P4174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P2393.rpgleinc'

dcl-ds T1191 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1191 FROM T1191 LIMIT 1;

theCharVar = 'Hello from P4174';
dsply theCharVar;
P716();
P311();
P2393();
return;