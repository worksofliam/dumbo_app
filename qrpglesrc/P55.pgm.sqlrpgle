**free

ctl-opt dftactgrp(*no);

dcl-pi P55;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds T211 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T211 FROM T211 LIMIT 1;

theCharVar = 'Hello from P55';
dsply theCharVar;
P18();
P29();
P5();
return;