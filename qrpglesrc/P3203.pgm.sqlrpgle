**free

ctl-opt dftactgrp(*no);

dcl-pi P3203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P2283.rpgleinc'
/copy 'qrpgleref/P1617.rpgleinc'

dcl-ds T726 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T726 FROM T726 LIMIT 1;

theCharVar = 'Hello from P3203';
dsply theCharVar;
P1710();
P2283();
P1617();
return;