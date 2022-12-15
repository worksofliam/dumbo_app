**free

ctl-opt dftactgrp(*no);

dcl-pi P5449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3312.rpgleinc'
/copy 'qrpgleref/P4983.rpgleinc'
/copy 'qrpgleref/P4924.rpgleinc'

dcl-ds T1731 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1731 FROM T1731 LIMIT 1;

theCharVar = 'Hello from P5449';
dsply theCharVar;
P3312();
P4983();
P4924();
return;