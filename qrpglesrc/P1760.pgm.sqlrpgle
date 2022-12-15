**free

ctl-opt dftactgrp(*no);

dcl-pi P1760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds T605 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T605 FROM T605 LIMIT 1;

theCharVar = 'Hello from P1760';
dsply theCharVar;
P1076();
P458();
P246();
return;