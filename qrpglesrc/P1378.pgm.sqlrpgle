**free

ctl-opt dftactgrp(*no);

dcl-pi P1378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds T188 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T188 FROM T188 LIMIT 1;

theCharVar = 'Hello from P1378';
dsply theCharVar;
P1239();
P185();
P694();
return;